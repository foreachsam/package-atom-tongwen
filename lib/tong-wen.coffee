TongWenView = require './tong-wen-view'
{CompositeDisposable} = require 'atom'
Util = require '../vendor/TongWen/Util.js'



module.exports = TongWen =
    tongWenView: null
    modalPanel: null
    subscriptions: null

    activate: (state) ->
        @tongWenView = new TongWenView(state.tongWenViewState)
        @modalPanel = atom.workspace.addModalPanel(item: @tongWenView.getElement(), visible: false)

        # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
        @subscriptions = new CompositeDisposable

        # Register command that toggles this view
        @subscriptions.add atom.commands.add 'atom-workspace', 'TongWen:S2T': => @s2t()
        @subscriptions.add atom.commands.add 'atom-workspace', 'TongWen:T2S': => @t2s()
        @subscriptions.add atom.commands.add 'atom-workspace', 'TongWen:S2T_S': => @s2t_s()
        @subscriptions.add atom.commands.add 'atom-workspace', 'TongWen:T2S_S': => @t2s_s()

    deactivate: ->
        @modalPanel.destroy()
        @subscriptions.dispose()
        @tongWenView.destroy()

    serialize: ->
        tongWenViewState: @tongWenView.serialize()

    s2t: ->
        #console.log 'TongWen:s2t'
        if editor = atom.workspace.getActiveTextEditor()
            editor.setText(Util.s2t(editor.getText()))
    t2s: ->
        #console.log 'TongWen:t2s'
        if editor = atom.workspace.getActiveTextEditor()
            editor.setText(Util.t2s(editor.getText()))
    s2t_s: ->
        #console.log 'TongWen:s2t_s'
        if editor = atom.workspace.getActiveTextEditor()
            editor.insertText(Util.s2t(editor.getSelectedText()))
    t2s_s: ->
        #console.log 'TongWen:t2s_s'
        if editor = atom.workspace.getActiveTextEditor()
            editor.insertText(Util.t2s(editor.getSelectedText()))

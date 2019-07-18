trigger CaseTrigger on Case (after insert,after update) {
    casetriggerhandler.syncWithCase((List<Case>) Trigger.new);
}
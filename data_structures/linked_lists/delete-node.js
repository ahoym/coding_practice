/*
  SINGLY linked list.

  Write a function, deleteNode(), that accepts a linked list node
  that exists within a pre-defined linked list and deletes it.
  Assume that you will never be given the tail node.

  Definition for singly-linked list.
    function ListNode(val) {
      this.val = val;
      this.next = null;
    }
*/

'use strict';


/**
 * @param {Node} node of linked list
 * @return {undefined} does not return anything
 */
function deleteNode(node) {
  node.val = node.next.val;
  node.next = node.next.next;
}


export default deleteNode;


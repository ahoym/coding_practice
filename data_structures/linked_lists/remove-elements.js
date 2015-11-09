/*

  Write a function, removeElements(), which takes in a head pointer
  for a singly linked list and a val. All nodes which have a val
  property of @val should be removed.

  Definition for singly-linked list.
  function ListNode(val) {
    this.val = val;
    this.next = null;
  }

*/

'use strict';


/**
 * Removes nodes that have a val property of @param val
 * @param {ListNode} head of linked list
 * @param {number} val of removing condition
 * @return {ListNode} of the new head pointer
 */
function removeElements(head, val) {
  let currentNode;

  if (!head) {
    return null;
  }

  currentNode = head;

  while (currentNode.next) {
    if (currentNode.next.val === val) {
      currentNode.next = currentNode.next.next;
    } else {
      currentNode = currentNode.next;
    }
  }

  return head.val === val ? head.next : head;
}


export default removeElements;


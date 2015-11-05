/*

  Write a function, isSameTree(), that takes in two binary tree root nodes and
  determines if they are equal or not.

  Two binary trees are considered equal if they are structurally identical and
  the nodes have the same value.

  Definition for a binary tree node.
  function TreeNode(val) {
    this.val = val;
    this.left = this.right = null;
  }

*/

'use strict';


/**
 * @param {TreeNode} p of first binary tree
 * @param {TreeNode} q of second binary tree
 * @returns {boolean} if both trees are equal
 */
function isSameTree(p, q) {
  if (!p || !q) {
    return false;
  }

  if (p.val !== q.val) {
    return false;
  }

  return isSameTree(p.left, q.left) && isSameTree(p.right, q.right);
}


export default isSameTree;


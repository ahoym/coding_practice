/*

  Write a function, isBalanced(), that takes in binary tree root node
  and determines if it is balanced or not.

  Definition for a binary tree node.
    function TreeNode(val) {
      this.val = val;
      this.left = null;
      this.right = null;
    }

*/

'use strict';

/**
 * @param {TreeNode} root of tree
 * @return {int} depth of tree
 */
function depth(root) {
  let left;
  let right;

  if (!root) {
    return 0;
  }

  left = depth(root.left);
  right = depth(root.right);

  if (left === -1 || right === -1 || Math.abs(left - right) > 1) {
    return -1;
  }

  return Math.max(left, right) + 1;
}


/**
 * @param {TreeNode} root of binary tree
 * @return {boolean} of whether tree is balanced
 */
function isBalanced(root) {
  return depth(root) !== -1;
}


export default isBalanced;


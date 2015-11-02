/*

  Write a function, maxDepth(), that takes in a binary tree root node
  and determines its maximum depth.

  Definition for a binary tree node.
    function TreeNode(val) {
      this.val = val;
      this.left = null;
      this.right = null;
    }
*/

'use strict';


/**
 * Determines the max depth of a binary tree.
 * @param {TreeNode} root of binary tree
 * @returns {int} of binary tree length
 */
function maxDepth(root) {
  if (!root) {
    return 0;
  }

  return Math.max(maxDepth(root.left), maxDepth(root.right)) + 1;
}


export default maxDepth;


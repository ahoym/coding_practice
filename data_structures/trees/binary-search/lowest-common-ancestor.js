/*

   Given a binary search tree (BST), find the lowest common ancestor (LCA) of
   two given nodes in the BST.

   According to the definition of LCA on Wikipedia: “The lowest common ancestor
   is defined between two nodes v and w as the lowest node in T that has both v
   and w as descendants (where we allow a node to be a descendant of itself).”

   Definition for a binary tree node.
    function TreeNode(val) {
      this.val = val;
      this.left = this.right = null;
    }
*/

'use strict';

/**
 * Recursively traverses the BST to find the LCA of nodes p and q
 * @param {TreeNode} root of BST
 * @param {TreeNode} p first node for comparison
 * @param {TreeNode} q second node for comparison
 * @return {TreeNode} lowest common ancestor || null
 */
function lowestCommonAncestor(root, p, q) {
  if (p.val < root.val && q.val < root.val) {
    return lowestCommonAncestor(root.left, p, q);
  } else if (p.val > root.val && q.val > root.val) {
    return lowestCommonAncestor(root.right, p, q);
  }

  return root;
}


export default lowestCommonAncestor;


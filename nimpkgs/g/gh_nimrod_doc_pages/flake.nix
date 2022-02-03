{
  description = ''Generates a GitHub documentation website for Nim projects.'';
  inputs."gh_nimrod_doc_pages-master".url = "path:./master";
  inputs."gh_nimrod_doc_pages-v0_2_0".url = "path:./v0_2_0";
  inputs."gh_nimrod_doc_pages-v0_2_2".url = "path:./v0_2_2";
  inputs."gh_nimrod_doc_pages-v0_2_4".url = "path:./v0_2_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
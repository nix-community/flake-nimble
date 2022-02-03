{
  description = ''Too awesome procs to be included in nimrod.os module'';
  inputs."genieos-master".url = "path:./master";
  inputs."genieos-v9_0_0-taeyeon".url = "path:./v9_0_0-taeyeon";
  inputs."genieos-v9_0_1-jessica".url = "path:./v9_0_1-jessica";
  inputs."genieos-v9_2_0-sunny".url = "path:./v9_2_0-sunny";
  inputs."genieos-v9_4_0-tiffany".url = "path:./v9_4_0-tiffany";
  inputs."genieos-v9_4_2-hyoyeon".url = "path:./v9_4_2-hyoyeon";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''github-release package'';
  inputs."github_release-master".url = "path:./master";
  inputs."github_release-releases".url = "path:./releases";
  inputs."github_release-v0_1_0".url = "path:./v0_1_0";
  inputs."github_release-v0_1_0-alpha".url = "path:./v0_1_0-alpha";
  inputs."github_release-v0_1_1-alpha".url = "path:./v0_1_1-alpha";
  inputs."github_release-v0_1_2".url = "path:./v0_1_2";
  inputs."github_release-v0_1_3".url = "path:./v0_1_3";
  inputs."github_release-v0_1_4".url = "path:./v0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
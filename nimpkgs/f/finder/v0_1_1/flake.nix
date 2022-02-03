{
  description = ''fs memory zip finder implement in Nim'';
  inputs.src-finder-v0_1_1.flake = false;
  inputs.src-finder-v0_1_1.type = "github";
  inputs.src-finder-v0_1_1.owner = "bung87";
  inputs.src-finder-v0_1_1.repo = "finder";
  inputs.src-finder-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."zip".url = "path:../../../z/zip";
  inputs."zip".type = "github";
  inputs."zip".owner = "riinr";
  inputs."zip".repo = "flake-nimble";
  inputs."zip".ref = "flake-pinning";
  inputs."zip".dir = "nimpkgs/z/zip";

  outputs = { self, nixpkgs, src-finder-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-finder-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-finder-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
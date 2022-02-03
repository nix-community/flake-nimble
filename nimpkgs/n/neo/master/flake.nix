{
  description = ''Linear algebra for Nim'';
  inputs.src-neo-master.flake = false;
  inputs.src-neo-master.type = "github";
  inputs.src-neo-master.owner = "andreaferretti";
  inputs.src-neo-master.repo = "neo";
  inputs.src-neo-master.ref = "refs/heads/master";
  
  
  inputs."nimblas".url = "path:../../../n/nimblas";
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  
  inputs."nimcuda".url = "path:../../../n/nimcuda";
  inputs."nimcuda".type = "github";
  inputs."nimcuda".owner = "riinr";
  inputs."nimcuda".repo = "flake-nimble";
  inputs."nimcuda".ref = "flake-pinning";
  inputs."nimcuda".dir = "nimpkgs/n/nimcuda";

  
  inputs."nimlapack".url = "path:../../../n/nimlapack";
  inputs."nimlapack".type = "github";
  inputs."nimlapack".owner = "riinr";
  inputs."nimlapack".repo = "flake-nimble";
  inputs."nimlapack".ref = "flake-pinning";
  inputs."nimlapack".dir = "nimpkgs/n/nimlapack";

  outputs = { self, nixpkgs, src-neo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
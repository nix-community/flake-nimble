{
  description = ''Prebuilt components for the Fidget GUI library.'';
  inputs.src-spinner-master.flake = false;
  inputs.src-spinner-master.type = "github";
  inputs.src-spinner-master.owner = "tonogram";
  inputs.src-spinner-master.repo = "spinner";
  inputs.src-spinner-master.ref = "refs/heads/master";
  
  
  inputs."fidget".url = "path:../../../f/fidget";
  inputs."fidget".type = "github";
  inputs."fidget".owner = "riinr";
  inputs."fidget".repo = "flake-nimble";
  inputs."fidget".ref = "flake-pinning";
  inputs."fidget".dir = "nimpkgs/f/fidget";

  
  inputs."gradient".url = "path:../../../g/gradient";
  inputs."gradient".type = "github";
  inputs."gradient".owner = "riinr";
  inputs."gradient".repo = "flake-nimble";
  inputs."gradient".ref = "flake-pinning";
  inputs."gradient".dir = "nimpkgs/g/gradient";

  outputs = { self, nixpkgs, src-spinner-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spinner-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spinner-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Max wrapper for omni.'';
  inputs.src-omnimax-develop.flake = false;
  inputs.src-omnimax-develop.type = "github";
  inputs.src-omnimax-develop.owner = "vitreo12";
  inputs.src-omnimax-develop.repo = "omnimax";
  inputs.src-omnimax-develop.ref = "refs/heads/develop";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."omni".url = "path:../../../o/omni";
  inputs."omni".type = "github";
  inputs."omni".owner = "riinr";
  inputs."omni".repo = "flake-nimble";
  inputs."omni".ref = "flake-pinning";
  inputs."omni".dir = "nimpkgs/o/omni";

  outputs = { self, nixpkgs, src-omnimax-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnimax-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-omnimax-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
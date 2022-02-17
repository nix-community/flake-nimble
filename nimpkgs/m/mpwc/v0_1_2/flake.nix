{
  description = ''Master Password command line utility'';
  inputs.src-mpwc-v0_1_2.flake = false;
  inputs.src-mpwc-v0_1_2.type = "github";
  inputs.src-mpwc-v0_1_2.owner = "SolitudeSF";
  inputs.src-mpwc-v0_1_2.repo = "mpwc";
  inputs.src-mpwc-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."masterpassword".type = "github";
  inputs."masterpassword".owner = "riinr";
  inputs."masterpassword".repo = "flake-nimble";
  inputs."masterpassword".ref = "flake-pinning";
  inputs."masterpassword".dir = "nimpkgs/m/masterpassword";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-mpwc-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpwc-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mpwc-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
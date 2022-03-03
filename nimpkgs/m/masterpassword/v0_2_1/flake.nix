{
  description = ''Master Password algorith implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-masterpassword-v0_2_1.flake = false;
  inputs.src-masterpassword-v0_2_1.type = "github";
  inputs.src-masterpassword-v0_2_1.owner = "SolitudeSF";
  inputs.src-masterpassword-v0_2_1.repo = "masterpassword";
  inputs.src-masterpassword-v0_2_1.ref = "refs/tags/v0.2.1";
  inputs.src-masterpassword-v0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimcrypto".type = "github";
  # inputs."nimcrypto".owner = "riinr";
  # inputs."nimcrypto".repo = "flake-nimble";
  # inputs."nimcrypto".ref = "flake-pinning";
  # inputs."nimcrypto".dir = "nimpkgs/n/nimcrypto";
  # inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-masterpassword-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-masterpassword-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-masterpassword-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
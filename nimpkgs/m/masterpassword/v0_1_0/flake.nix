{
  description = ''Master Password algorith implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-masterpassword-v0_1_0.flake = false;
  inputs.src-masterpassword-v0_1_0.type = "github";
  inputs.src-masterpassword-v0_1_0.owner = "SolitudeSF";
  inputs.src-masterpassword-v0_1_0.repo = "masterpassword";
  inputs.src-masterpassword-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."hmac".type = "github";
  inputs."hmac".owner = "riinr";
  inputs."hmac".repo = "flake-nimble";
  inputs."hmac".ref = "flake-pinning";
  inputs."hmac".dir = "nimpkgs/h/hmac";

  outputs = { self, nixpkgs, flakeNimbleLib, src-masterpassword-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-masterpassword-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-masterpassword-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
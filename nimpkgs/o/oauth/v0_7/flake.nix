{
  description = ''OAuth library for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-oauth-v0_7.flake = false;
  inputs.src-oauth-v0_7.type = "github";
  inputs.src-oauth-v0_7.owner = "CORDEA";
  inputs.src-oauth-v0_7.repo = "oauth";
  inputs.src-oauth-v0_7.ref = "refs/tags/v0.7";
  inputs.src-oauth-v0_7.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."sha1".type = "github";
  # inputs."sha1".owner = "riinr";
  # inputs."sha1".repo = "flake-nimble";
  # inputs."sha1".ref = "flake-pinning";
  # inputs."sha1".dir = "nimpkgs/s/sha1";
  # inputs."sha1".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."sha1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-oauth-v0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oauth-v0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-oauth-v0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
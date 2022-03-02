{
  description = ''Syndicated actors for conversational concurrency'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-syndicate-1_1_0.flake = false;
  inputs.src-syndicate-1_1_0.type = "other";
  inputs.src-syndicate-1_1_0.owner = "~ehmry";
  inputs.src-syndicate-1_1_0.repo = "syndicate-nim";
  inputs.src-syndicate-1_1_0.ref = "refs/tags/1.1.0";
  inputs.src-syndicate-1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimsha2".type = "github";
  # inputs."nimsha2".owner = "riinr";
  # inputs."nimsha2".repo = "flake-nimble";
  # inputs."nimsha2".ref = "flake-pinning";
  # inputs."nimsha2".dir = "nimpkgs/n/nimsha2";
  # inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."preserves".type = "github";
  # inputs."preserves".owner = "riinr";
  # inputs."preserves".repo = "flake-nimble";
  # inputs."preserves".ref = "flake-pinning";
  # inputs."preserves".dir = "nimpkgs/p/preserves";
  # inputs."preserves".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."preserves".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-syndicate-1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-syndicate-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-syndicate-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
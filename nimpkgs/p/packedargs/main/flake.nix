{
  description = ''a convention mainly created for `createThread` proc'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-packedArgs-main.flake = false;
  inputs.src-packedArgs-main.type = "github";
  inputs.src-packedArgs-main.owner = "hamidb80";
  inputs.src-packedArgs-main.repo = "packedArgs";
  inputs.src-packedArgs-main.ref = "refs/heads/main";
  inputs.src-packedArgs-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."macroplus".type = "github";
  # inputs."macroplus".owner = "riinr";
  # inputs."macroplus".repo = "flake-nimble";
  # inputs."macroplus".ref = "flake-pinning";
  # inputs."macroplus".dir = "nimpkgs/m/macroplus";
  # inputs."macroplus".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."macroplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-packedArgs-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-packedArgs-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-packedArgs-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
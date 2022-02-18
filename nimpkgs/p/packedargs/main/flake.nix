{
  description = ''a convention mainly created for `createThread` proc'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-packedargs-main.flake = false;
  inputs.src-packedargs-main.type = "github";
  inputs.src-packedargs-main.owner = "hamidb80";
  inputs.src-packedargs-main.repo = "packedArgs";
  inputs.src-packedargs-main.ref = "refs/heads/main";
  
  
  inputs."macroplus".type = "github";
  inputs."macroplus".owner = "riinr";
  inputs."macroplus".repo = "flake-nimble";
  inputs."macroplus".ref = "flake-pinning";
  inputs."macroplus".dir = "nimpkgs/m/macroplus";

  outputs = { self, nixpkgs, flakeNimbleLib, src-packedargs-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-packedargs-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-packedargs-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
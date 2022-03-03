{
  description = ''The International Standard for country codes and codes for their subdivisions on Nim (ISO-3166)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-iridium-v0_3_0.flake = false;
  inputs.src-iridium-v0_3_0.type = "github";
  inputs.src-iridium-v0_3_0.owner = "KingDarBoja";
  inputs.src-iridium-v0_3_0.repo = "Iridium";
  inputs.src-iridium-v0_3_0.ref = "refs/tags/v0.3.0";
  inputs.src-iridium-v0_3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-iridium-v0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-iridium-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-iridium-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''The International Standard for country codes and codes for their subdivisions on Nim (ISO-3166)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-iridium-master.flake = false;
  inputs.src-iridium-master.type = "github";
  inputs.src-iridium-master.owner = "KingDarBoja";
  inputs.src-iridium-master.repo = "Iridium";
  inputs.src-iridium-master.ref = "refs/heads/master";
  inputs.src-iridium-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-iridium-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-iridium-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-iridium-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
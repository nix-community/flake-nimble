{
  description = ''Too awesome procs to be included in nimrod.os module'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-genieos-v9_2_0-sunny.flake = false;
  inputs.src-genieos-v9_2_0-sunny.type = "github";
  inputs.src-genieos-v9_2_0-sunny.owner = "Araq";
  inputs.src-genieos-v9_2_0-sunny.repo = "genieos";
  inputs.src-genieos-v9_2_0-sunny.ref = "refs/tags/v9.2.0-sunny";
  inputs.src-genieos-v9_2_0-sunny.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-genieos-v9_2_0-sunny, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genieos-v9_2_0-sunny;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genieos-v9_2_0-sunny"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''wave is a tiny WAV sound module'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-wave-develop.flake = false;
  inputs.src-wave-develop.type = "github";
  inputs.src-wave-develop.owner = "jiro4989";
  inputs.src-wave-develop.repo = "wave";
  inputs.src-wave-develop.ref = "refs/heads/develop";
  inputs.src-wave-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-wave-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wave-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wave-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
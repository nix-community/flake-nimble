{
  description = ''A small wrapper around PortAudio for cross-platform audio IO.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nordaudio-main.flake = false;
  inputs.src-nordaudio-main.type = "github";
  inputs.src-nordaudio-main.owner = "Psirus";
  inputs.src-nordaudio-main.repo = "nordaudio";
  inputs.src-nordaudio-main.ref = "refs/heads/main";
  inputs.src-nordaudio-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nordaudio-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nordaudio-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nordaudio-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
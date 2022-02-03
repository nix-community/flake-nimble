{
  description = ''A small wrapper around PortAudio for cross-platform audio IO.'';
  inputs.src-nordaudio-main.flake = false;
  inputs.src-nordaudio-main.type = "github";
  inputs.src-nordaudio-main.owner = "Psirus";
  inputs.src-nordaudio-main.repo = "nordaudio";
  inputs.src-nordaudio-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-nordaudio-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nordaudio-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nordaudio-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
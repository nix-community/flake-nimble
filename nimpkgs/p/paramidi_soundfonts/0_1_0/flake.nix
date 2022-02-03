{
  description = ''Soundfonts for paramidi'';
  inputs.src-paramidi_soundfonts-0_1_0.flake = false;
  inputs.src-paramidi_soundfonts-0_1_0.type = "github";
  inputs.src-paramidi_soundfonts-0_1_0.owner = "paranim";
  inputs.src-paramidi_soundfonts-0_1_0.repo = "paramidi_soundfonts";
  inputs.src-paramidi_soundfonts-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-paramidi_soundfonts-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paramidi_soundfonts-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-paramidi_soundfonts-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
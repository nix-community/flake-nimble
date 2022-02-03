{
  description = ''Soundfonts for paramidi'';
  inputs.src-paramidi_soundfonts-master.flake = false;
  inputs.src-paramidi_soundfonts-master.type = "github";
  inputs.src-paramidi_soundfonts-master.owner = "paranim";
  inputs.src-paramidi_soundfonts-master.repo = "paramidi_soundfonts";
  inputs.src-paramidi_soundfonts-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-paramidi_soundfonts-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paramidi_soundfonts-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-paramidi_soundfonts-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
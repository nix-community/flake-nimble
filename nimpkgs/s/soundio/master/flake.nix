{
  description = ''Bindings for libsoundio'';
  inputs.src-soundio-master.flake = false;
  inputs.src-soundio-master.type = "github";
  inputs.src-soundio-master.owner = "ul";
  inputs.src-soundio-master.repo = "soundio";
  inputs.src-soundio-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-soundio-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-soundio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-soundio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
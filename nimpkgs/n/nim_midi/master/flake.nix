{
  description = ''Read and write midi files'';
  inputs.src-nim_midi-master.flake = false;
  inputs.src-nim_midi-master.type = "github";
  inputs.src-nim_midi-master.owner = "jerous86";
  inputs.src-nim_midi-master.repo = "nim_midi";
  inputs.src-nim_midi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nim_midi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_midi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_midi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
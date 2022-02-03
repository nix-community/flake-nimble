{
  description = ''A simple gap buffer implementation'';
  inputs.src-gapbuffer-master.flake = false;
  inputs.src-gapbuffer-master.type = "other";
  inputs.src-gapbuffer-master.owner = "vktec";
  inputs.src-gapbuffer-master.repo = "nim-gapbuffer";
  inputs.src-gapbuffer-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gapbuffer-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gapbuffer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gapbuffer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
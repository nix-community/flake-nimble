{
  description = ''Wrapper around libopus'';
  inputs.src-opussum-master.flake = false;
  inputs.src-opussum-master.type = "github";
  inputs.src-opussum-master.owner = "ire4ever1190";
  inputs.src-opussum-master.repo = "opussum";
  inputs.src-opussum-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-opussum-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opussum-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opussum-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
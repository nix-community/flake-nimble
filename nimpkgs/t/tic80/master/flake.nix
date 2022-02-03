{
  description = ''TIC-80 bindings'';
  inputs.src-tic80-master.flake = false;
  inputs.src-tic80-master.type = "github";
  inputs.src-tic80-master.owner = "thisago";
  inputs.src-tic80-master.repo = "tic80";
  inputs.src-tic80-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tic80-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tic80-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tic80-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Lightweight audio mixer for games'';
  inputs.src-cmixer-master.flake = false;
  inputs.src-cmixer-master.type = "github";
  inputs.src-cmixer-master.owner = "rxi";
  inputs.src-cmixer-master.repo = "cmixer-nim";
  inputs.src-cmixer-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cmixer-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cmixer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cmixer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
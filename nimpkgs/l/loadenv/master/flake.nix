{
  description = ''load .env variables'';
  inputs.src-loadenv-master.flake = false;
  inputs.src-loadenv-master.type = "github";
  inputs.src-loadenv-master.owner = "xmonader";
  inputs.src-loadenv-master.repo = "nim-loadenv";
  inputs.src-loadenv-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-loadenv-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loadenv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-loadenv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
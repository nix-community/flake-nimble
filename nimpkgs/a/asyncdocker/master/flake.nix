{
  description = ''Asynchronous docker client written by Nim-lang'';
  inputs.src-asyncdocker-master.flake = false;
  inputs.src-asyncdocker-master.type = "github";
  inputs.src-asyncdocker-master.owner = "tulayang";
  inputs.src-asyncdocker-master.repo = "asyncdocker";
  inputs.src-asyncdocker-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-asyncdocker-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncdocker-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asyncdocker-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Wrapper for the nanomsg socket library that provides several common communication patterns'';
  inputs.src-nanomsg-master.flake = false;
  inputs.src-nanomsg-master.type = "github";
  inputs.src-nanomsg-master.owner = "def-";
  inputs.src-nanomsg-master.repo = "nim-nanomsg";
  inputs.src-nanomsg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nanomsg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanomsg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nanomsg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
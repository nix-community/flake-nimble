{
  description = ''Lua convenience library for nim'';
  inputs.src-luna-master.flake = false;
  inputs.src-luna-master.type = "github";
  inputs.src-luna-master.owner = "smallfx";
  inputs.src-luna-master.repo = "luna.nim";
  inputs.src-luna-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-luna-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-luna-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-luna-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
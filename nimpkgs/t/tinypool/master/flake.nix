{
  description = ''A minimalistic connection pooling package'';
  inputs.src-tinypool-master.flake = false;
  inputs.src-tinypool-master.type = "github";
  inputs.src-tinypool-master.owner = "PhilippMDoerner";
  inputs.src-tinypool-master.repo = "TinyPool";
  inputs.src-tinypool-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tinypool-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tinypool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tinypool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
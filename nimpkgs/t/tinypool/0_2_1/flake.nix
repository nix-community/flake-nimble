{
  description = ''A minimalistic connection pooling package'';
  inputs.src-tinypool-0_2_1.flake = false;
  inputs.src-tinypool-0_2_1.type = "github";
  inputs.src-tinypool-0_2_1.owner = "PhilippMDoerner";
  inputs.src-tinypool-0_2_1.repo = "TinyPool";
  inputs.src-tinypool-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-tinypool-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tinypool-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tinypool-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
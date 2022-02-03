{
  description = ''A minimalistic connection pooling package'';
  inputs.src-tinypool-0_2_0.flake = false;
  inputs.src-tinypool-0_2_0.type = "github";
  inputs.src-tinypool-0_2_0.owner = "PhilippMDoerner";
  inputs.src-tinypool-0_2_0.repo = "TinyPool";
  inputs.src-tinypool-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-tinypool-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tinypool-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tinypool-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
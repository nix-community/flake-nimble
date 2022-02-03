{
  description = ''Nim wrapper for the LZ4 library. There is also a high-level API for easy use'';
  inputs.src-nimlz4-master.flake = false;
  inputs.src-nimlz4-master.type = "github";
  inputs.src-nimlz4-master.owner = "dfdeshom";
  inputs.src-nimlz4-master.repo = "nimlz4";
  inputs.src-nimlz4-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimlz4-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlz4-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimlz4-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Nim wrapper for the LZ4 library. There is also a high-level API for easy use'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimlz4-master.flake = false;
  inputs.src-nimlz4-master.type = "github";
  inputs.src-nimlz4-master.owner = "dfdeshom";
  inputs.src-nimlz4-master.repo = "nimlz4";
  inputs.src-nimlz4-master.ref = "refs/heads/master";
  inputs.src-nimlz4-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimlz4-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlz4-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimlz4-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''HPACK (Header Compression for HTTP/2)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hpack-master.flake = false;
  inputs.src-hpack-master.type = "github";
  inputs.src-hpack-master.owner = "nitely";
  inputs.src-hpack-master.repo = "nim-hpack";
  inputs.src-hpack-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hpack-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hpack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hpack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
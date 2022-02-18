{
  description = ''Nim wrapper of the Sophia key/value store'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sophia-master.flake = false;
  inputs.src-sophia-master.type = "github";
  inputs.src-sophia-master.owner = "gokr";
  inputs.src-sophia-master.repo = "nim-sophia";
  inputs.src-sophia-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sophia-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sophia-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sophia-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
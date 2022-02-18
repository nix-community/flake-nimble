{
  description = ''High-level and low-level interfaces to python and lua'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimborg-master.flake = false;
  inputs.src-nimborg-master.type = "github";
  inputs.src-nimborg-master.owner = "micklat";
  inputs.src-nimborg-master.repo = "NimBorg";
  inputs.src-nimborg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimborg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimborg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimborg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
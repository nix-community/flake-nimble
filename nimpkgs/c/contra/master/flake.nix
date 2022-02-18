{
  description = ''Lightweight Contract Programming, Design by Contract, on 9 LoC, NimScript, JavaScript, compile-time.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-contra-master.flake = false;
  inputs.src-contra-master.type = "github";
  inputs.src-contra-master.owner = "juancarlospaco";
  inputs.src-contra-master.repo = "nim-contra";
  inputs.src-contra-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-contra-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-contra-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-contra-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
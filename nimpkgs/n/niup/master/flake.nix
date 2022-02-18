{
  description = ''IUP FFI bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-niup-master.flake = false;
  inputs.src-niup-master.type = "github";
  inputs.src-niup-master.owner = "dariolah";
  inputs.src-niup-master.repo = "niup";
  inputs.src-niup-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-niup-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-niup-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
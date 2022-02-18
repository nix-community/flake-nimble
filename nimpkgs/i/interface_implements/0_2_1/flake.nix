{
  description = ''implements macro creates toInterface proc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-interface_implements-0_2_1.flake = false;
  inputs.src-interface_implements-0_2_1.type = "github";
  inputs.src-interface_implements-0_2_1.owner = "itsumura-h";
  inputs.src-interface_implements-0_2_1.repo = "nim-interface-implements";
  inputs.src-interface_implements-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-interface_implements-0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-interface_implements-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-interface_implements-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
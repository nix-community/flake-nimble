{
  description = ''implements macro creates toInterface proc.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-interface_implements-0_2_0.flake = false;
  inputs.src-interface_implements-0_2_0.type = "github";
  inputs.src-interface_implements-0_2_0.owner = "itsumura-h";
  inputs.src-interface_implements-0_2_0.repo = "nim-interface-implements";
  inputs.src-interface_implements-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-interface_implements-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-interface_implements-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-interface_implements-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
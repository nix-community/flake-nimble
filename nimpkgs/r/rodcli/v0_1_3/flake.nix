{
  description = ''making Nim development easier in the command-line'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rodcli-v0_1_3.flake = false;
  inputs.src-rodcli-v0_1_3.type = "github";
  inputs.src-rodcli-v0_1_3.owner = "jabbalaci";
  inputs.src-rodcli-v0_1_3.repo = "NimCliHelper";
  inputs.src-rodcli-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rodcli-v0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodcli-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rodcli-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
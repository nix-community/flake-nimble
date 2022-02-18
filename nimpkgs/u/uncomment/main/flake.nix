{
  description = ''uncomment the codes at the compile time'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-uncomment-main.flake = false;
  inputs.src-uncomment-main.type = "github";
  inputs.src-uncomment-main.owner = "hamidb80";
  inputs.src-uncomment-main.repo = "uncomment";
  inputs.src-uncomment-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-uncomment-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uncomment-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uncomment-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''faker is a Nim package that generates fake data for you.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-faker-v0_11_2.flake = false;
  inputs.src-faker-v0_11_2.type = "github";
  inputs.src-faker-v0_11_2.owner = "jiro4989";
  inputs.src-faker-v0_11_2.repo = "faker";
  inputs.src-faker-v0_11_2.ref = "refs/tags/v0.11.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-faker-v0_11_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-faker-v0_11_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-faker-v0_11_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
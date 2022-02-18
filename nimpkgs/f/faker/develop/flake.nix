{
  description = ''faker is a Nim package that generates fake data for you.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-faker-develop.flake = false;
  inputs.src-faker-develop.type = "github";
  inputs.src-faker-develop.owner = "jiro4989";
  inputs.src-faker-develop.repo = "faker";
  inputs.src-faker-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-faker-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-faker-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-faker-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
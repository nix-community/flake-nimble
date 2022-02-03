{
  description = ''faker is a Nim package that generates fake data for you.'';
  inputs.src-faker-develop.flake = false;
  inputs.src-faker-develop.type = "github";
  inputs.src-faker-develop.owner = "jiro4989";
  inputs.src-faker-develop.repo = "faker";
  inputs.src-faker-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-faker-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-faker-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-faker-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
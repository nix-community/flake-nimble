{
  description = ''faker is a Nim package that generates fake data for you.'';
  inputs.src-faker-master.flake = false;
  inputs.src-faker-master.type = "github";
  inputs.src-faker-master.owner = "jiro4989";
  inputs.src-faker-master.repo = "faker";
  inputs.src-faker-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-faker-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-faker-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-faker-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
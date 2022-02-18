{
  description = ''Advanced Encryption Standard, Rijndael Algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimaes-master.flake = false;
  inputs.src-nimaes-master.type = "github";
  inputs.src-nimaes-master.owner = "jangko";
  inputs.src-nimaes-master.repo = "nimAES";
  inputs.src-nimaes-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimaes-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimaes-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimaes-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
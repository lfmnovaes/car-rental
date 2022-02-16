import React from 'react';

const HelloWorld = (data) => {
  const { greeting } = data;

  return (
    <>
      Greeting:
      {' '}
      {greeting}
    </>
  );
};

export default HelloWorld;
